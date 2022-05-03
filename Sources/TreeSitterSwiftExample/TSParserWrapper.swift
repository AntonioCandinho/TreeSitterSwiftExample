import TreeSitter

class TSParserWrapper {
    private var parser: OpaquePointer

    public init() {
        parser = ts_parser_new()
        print("TSParser successfully created")
    }

    deinit {
        print("Automatically deallocating TSParser")
        ts_parser_delete(parser)
    }
}
