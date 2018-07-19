<?php 
    namespace  app\command;
    use think\console\Command;
    use think\console\Input;
    use think\console\input\Argument;
    use think\console\Output;

    Class Task extends Command
    {
        protected function configure()
        {
            $this->addArgument('test1',Argument::REQUIRED);  #必须参数
            $this->addArgument('test2',Argument::OPTIONAL);  #可选参数
            $this->setName('test')->setDescription('Command Test');
        }

        protected function execute(Input $input, Output $output)
        {
            $test1 = $input->getArgument('test1');
            $test2 = $input->getArgument('test2');
            #逻辑代码
            //todo

            #输出代码
            $output->writeln("TestCommand:test1=".json_encode($test1));
            $output->writeln("TestCommand:test2=".json_encode($test2));
        }
    }
	









?>
